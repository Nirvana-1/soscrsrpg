using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Engine.Models;

namespace Engine.Factories
{
    internal class WorldFactory
    {
        internal World CreateWorld()
        {
            World newWorld = new World();

            newWorld.AddLocation(-2, -1, "Farmer's Field",
                "There are rows of corn growing here, with giant rats hiding between them",
                "/Engine;component/images/Locations/FarmFields.png");
            newWorld.AddLocation(-1, -1, "Farmer's House",
                "This is the house of yout neighbor, Farmer Ted",
                "/Engine;component/images/Locations/Farmhouse.png");
            newWorld.AddLocation(0, -1, "home",
                "This is your home",
                "/Engine;component/images/Locations/Home.png");
            newWorld.AddLocation(-1,0, "Trading Shop",
                "The Shop of Susan ,the trader",
                "/Engine;component/images/Locations/Trader.png");
            newWorld.AddLocation(0, 0, "Town square",
                "You see a fountain here.",
                "/Engine;component/images/Locations/TownSquare.png");
            newWorld.AddLocation(1, 0, "Town Gate",
                "There is a gate here, protecting the town from giant spiders.",
                "/Engine;component/images/Locations/TownGate.png");
            newWorld.AddLocation(2, 0, "Spider Forest",
                "The trees in this forest are covered with spider webs.",
                "/Engine;component/images/Locations/SpiderForest.png");
            newWorld.AddLocation(0, 1, "Herbalist's hut",
                "You see a small hut, with plants drying from the roof.",
                "/Engine;component/images/Locations/HerbalistsHut.png");
            newWorld.AddLocation(0, 2, "Herbalist's garden",
                "There are many plants here, with snakes hiding behind them.",
                "/Engine;component/images/Locations/HerbalistsGarden.png");



            return newWorld;
        }
    }
}
