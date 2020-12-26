#include <SFML/Graphics.hpp>

float foo1(float t)
{
    return 0.5 - 0.5 * exp(-250 * t);
}


int main()
{
    sf::RenderWindow window(sf::VideoMode(1600, 800), "SFML works!");
    sf::CircleShape shape(100.f);
    shape.setFillColor(sf::Color::Green);

    while (window.isOpen())
    {
        sf::Event event;
        while (window.pollEvent(event))
        {
            if (event.type == sf::Event::Closed)
                window.close();
        }

        
        sf::Vertex line[] =
        {
            sf::Vertex(sf::Vector2f(0, 400)),
            sf::Vertex(sf::Vector2f(1600, 400))
        };

        window.draw(line, 2, sf::Lines);

        for (int i = 0; i < 3; ++i)
        {
            sf::Vertex meandr[] = 
            {
                sf::Vertex(sf::Vector2f(200*(i * 2), 200)),
                sf::Vertex(sf::Vector2f(200*(i * 2 + 1), 200))
            };
            window.draw(meandr, 2, sf::Lines);
        }

        int x = 0, y = 0;


        sf::Vertex line1[] =
        {
            sf::Vertex(sf::Vector2f(0, 400)),
            sf::Vertex(sf::Vector2f(1600, 400))
        };
        window.draw(line1, 2, sf::Line);



        window.display();
    }

    return 0;
}
