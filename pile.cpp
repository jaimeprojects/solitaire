//Class to represent a Pile.
#include <iostream>
#include "card.h"
#include "pile.h"
#include <vector>

using namespace std;

vector<card> cards;
//constructor
pile::pile(){
 }
 
// card pile::pop(){//wrong
//     card temp = this->cards.front();
//     this->cards.erase(this->cards.begin());
//     return temp;
// }

void pile::push(card newCard){
    cards.push_back(newCard);
}
card pile::topCard(){
    return cards.at(cards.size()-1);
}
bool pile::empty(){
    if(cards.size()==0)
        return true;
    else
        return false;
}
vector<card> pile::getCards(){
    return cards;
}


