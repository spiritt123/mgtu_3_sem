# frozen_string_literal: true

require 'nokogiri'
require 'open-uri'

# class proxy
class ProxyController < ApplicationController
  def input; end

  def output
    render result.first => result.last.html_safe
  end

  private

  BASE_API_URL           = 'http://localhost:3000/?format=xml'
  XSLT_SERVER_TRANSFORM  = "#{Rails.root}/public/server_transform.xslt"
  XSLT_BROWSER_TRANSFORM = '/browser_transform.xslt'

  def result
    @result ||= begin
                  api_response = open(url)

                  case side
                  when 'server'
                    [:html, xslt_transform(api_response).to_html]
                  when 'client-with-xslt'
                    [:xml, insert_browser_xslt(api_response).to_xml]
                  else
                    [:xml, api_response.read]
                  end
                end
  end
  helper_method :result

  def url
    @url ||= BASE_API_URL + "&arr=#{arr}"
  end

  def side
    @side ||= params[:side]
  end

  def arr
    @arr ||= params[:arr]
  end

  def xslt_transform(data, transform: XSLT_SERVER_TRANSFORM)
    doc = Nokogiri::XML(data)
    xslt = Nokogiri::XSLT(File.read(transform))
    xslt.transform(doc)
  end

  def insert_browser_xslt(data, transform: XSLT_BROWSER_TRANSFORM)
    doc = Nokogiri::XML(data)
    xslt = Nokogiri::XML::ProcessingInstruction.new(doc,
                                                    'xml-stylesheet',
                                                    'type="text/xsl" href="' + transform + '"')
    doc.root.add_previous_sibling(xslt)
    doc
  end
end
