Book.destroy_all

Book.create!([{
  title: "The Stranger",
  author: "Albert Camus",
  description: "Through the story of an ordinary man unwittingly drawn into a senseless murder on an Algerian beach, Camus explored what he termed 'the nakedness of man faced with the absurd.' First published in 1946; now in a new translation by Matthew Ward.",
  amazon_id: "0679720200",
  rating: 6,
  finished_on: 25.days.ago
},
{
  title: "Common Sense",
  author: "Thomas Paine",
  description: "Among the most influential authors and reformers of his age, Thomas Paine (1737–1809) was born in England but went on to play an important role in both the American and French Revolutions. In 1774, he emigrated to America where, for a time, he helped to edit the Pennsylvania Magazine. On January 10, 1776, he published his pamphlet Common Sense, a persuasive argument for the colonies' political and economic separation from Britain.
Common Sense cites the evils of monarchy, accuses the British government of inflicting economic and social injustices upon the colonies, and points to the absurdity of an island attempting to rule a continent. Credited by George Washington as having changed the minds of many of his countrymen, the document sold over 500,000 copies within a few months.
Today, Common Sense remains a landmark document in the struggle for freedom, distinguished not only by Paine's ideas but also by its clear and passionate presentation. Designed to ignite public opinion against autocratic rule, the pamphlet offered a careful balance between imagination and judgment, and appropriate language and expression to fit the subject. It immediately found a receptive audience, heartened Washington's despondent army, and foreshadowed much of the phrasing and substance of the Declaration of Independence.
A selection of the Common Core State Standards Initiative.",
  amazon_id: "0486296024",
  rating: 6,
  finished_on: 50.days.ago
},
{
  title: "The Lean Startup",
  author: "Eric Ries",
  description: "Most startups fail. But many of those failures are preventable.  The Lean Startup is a new approach being adopted across the globe, changing the way companies are built and new products are launched.",
  amazon_id: "9780307887894",
  rating: 5,
  finished_on: nil
},
{
  title: "The Devil Reads Derrida",
  author: "James K.A. Smith",
  description: "“We hear a lot these days about the quest for alternative sources of energy. Has anyone considered Jamie Smith? This whirling dervish of public philosophy generates enough intellectual energy to supply a middle-size city all by himself.” — John Wilson / editor of Books & Culture / “By now, Jamie Smith is not just a leading ‘philosophical’ or ‘postmodern’ or ‘Reformed’ theologian: he is simply a leading theologian. This volume shows that he has not only ascended to that height but also descended to a depth that terrifies most academics — journalism. He offers a theology as everyday as the neighborhood, the movies, partisan politics, the university, and the street corner — and with a twinkle in his eye he shows us Jesus’ lordship in each place. I hope others will not just read Jamie’s book, but will go and do likewise.” — Jason Byassee / Center for Theology, Writing & Media, Duke Divinity School / A notable young voice in the academy, James K. A. Smith has consistently spoken to the church as the most important “public” for his intellectual work. Bringing together essays both thoughtful and entertaining, The Devil Reads Derrida displays some of Smith’s most significant forays into the public arena. / In this engaging work Smith grapples with the Wild at Heart phenomenon and the challenges of secularization, deals with sex and consumerism, and comments on creative works from American Beauty and Harry Potter to A History of Violence and the poetry of Franz Wright. No matter what.",
  amazon_id: "0802864074",
  rating: 7,
  finished_on: 30.days.ago
}])

p "Created #{Book.count} books"
