DROP TABLE IF EXISTS posts;

CREATE TABLE posts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    title TEXT NOT NULL,
    content TEXT NOT NULL
);

insert into posts (id, created, title, content) values ('4', '2023-04-10 19:31:17', 'Orange line is so slow!', "I've been taking the orange line to work for the past few weeks, and I have to say, it's been a frustrating experience. The trains seem to be moving at a snail's pace, and I'm often late to work because of it. I know that traffic in the city is always bad, but this is just ridiculous.

Has anyone else had similar experiences with the orange line? I'm curious to hear if this is a common problem or if I'm just unlucky.");

insert into posts (id, created, title, content) values ('3', '2023-04-9 16:30:17', 'The stations smells!', "I'm a regular rider on the train and I've noticed that the station has been smelling really bad lately. I'm concerned about this because it not only affects our comfort but also our health.

I understand that some people may be using the station as a bathroom or that there might be a sewage problem, but regardless of the cause, I think it's important that we address this issue.

Has anyone else noticed this problem? And do you have any suggestions on how we can work together to make our station a cleaner and more pleasant place to wait for our trains?");

insert into posts (id, created, title, content) values ('2', '2023-04-8 10:00:00', 'Why are the fares so expensive!', "I've been taking public transportation for years and I can't help but wonder why the fares are so expensive these days. It's becoming increasingly difficult to afford, especially for those who rely on public transportation to get to work or school.

I understand that there are maintenance and operation costs, but are the fare increases really necessary? Is there anything we as riders can do to advocate for more affordable fares? I'm hoping to start a discussion and hear your thoughts on this issue.");

insert into posts (id, created, title, content) values ('1', '2023-04-6 09:01:23', 'Waiting 10-15 minutes for the orange line!', "I've been taking the orange line for a while now, and I've noticed that I often have to wait 10-15 minutes for the next train to arrive. This can be really frustrating, especially when I'm running late for work or an appointment.

Does anyone else have this issue, or is it just me? I'm wondering if there's a way to improve the frequency of the orange line trains so that we don't have to wait so long.");


