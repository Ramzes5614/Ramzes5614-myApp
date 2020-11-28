from datetime import datetime

from app import db

users_comments = db.Table('comments',
        db.Column('user_id', db.Integer, db.ForeignKey('user.id_user'), primary_key=True),
        db.Column('comment_id', db.Integer, db.ForeignKey('comment.id_comment'), primary_key=True)
        )

users_petitions = db.Table('users_petitions',
        db.Column('user_id', db.Integer, db.ForeignKey('user.id_user'), primary_key=True),
        db.Column('petition_id', db.Integer, db.ForeignKey('petition.id_petition'), primary_key=True)
        )

class User(db.Model):
    id_user = db.Column(db.Integer, primary_key=True)
    first_name = db.Column(db.String(32), nullable=False)
    last_name = db.Column(db.String(32), nullable=False)
    father_name = db.Column(db.String(32))
    date_of_birth = db.Column(db.DateTime, nullable=False)
    position = db.Column(db.String(32), nullable=False)
    education = db.Column(db.String(32))
    experience = db.Column(db.Integer)
    phone = db.Column(db.String(16), nullable=False)
    comments = db.relationship('Comment', secondary=users_comments,lazy='subquery', backref=db.backref('users', lazy=True))
    petitions = db.relationship('Petition', secondary=users_petitions, backref=db.backref('user'), lazy='subquery')
    petition_id = db.Column(db.Integer, db.ForeignKey('petition.id_petition'), nullable=True)


class Admin(db.Model):
    id_admin = db.Column(db.Integer, primary_key=True)
    first_name = db.Column(db.String(32), nullable=False)
    last_name = db.Column(db.String(32), nullable=False)
    position = db.Column(db.String(32), nullable=False)


class Petition(db.Model):
    id_petition = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(64), nullable=False)
    desc = db.Column(db.String(256))
    solution_category = db.Column(db.String(32), nullable=False)
    solution_character = db.Column(db.String(256))
    likes = db.Column(db.Integer, default=0)
    rewards = db.Column(db.Integer, default=0)
    expenses = db.relationship('Expenses', backref='petition', lazy=True)
    introduction = db.relationship('Introduction', backref='petition', lazy=True)
    solution_id = db.Column(db.Integer, db.ForeignKey('solution.id_solution'), nullable=True)
    solution = db.relationship('Solution', backref='petition', lazy=True)
    authors = db.relationship('User', secondary=users_petitions, backref=db.backref('petition'), lazy='subquery')


class Solution(db.Model):
    id_solution = db.Column(db.Integer, primary_key=True)
    status = db.Column(db.String(32), nullable=False)
    date_time = db.Column(db.DateTime, default=datetime.utcnow())


class Expenses(db.Model):
    id_expenses = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(32), nullable=False)
    sum = db.Column(db.Integer, default=0)
    solution = db.Column(db.Integer, db.ForeignKey('petition.id_petition'), nullable=False)


class Introduction(db.Model):
    id_introduction = db.Column(db.Integer, primary_key=True)
    stage = db.Column(db.String(64), nullable=False)
    days = db.Column(db.Integer, default=0)
    solution = db.Column(db.Integer, db.ForeignKey('petition.id_petition'), nullable=False)


class Comment(db.Model):
    id_comment = db.Column(db.Integer, primary_key=True)
    message = db.Column(db.Text(256))
    date_time = db.Column(db.DateTime, default=datetime.utcnow())
    petition_id = db.Column(db.Integer, db.ForeignKey('petition.id_petition'), nullable=False)
    petition = db.relationship('Petition',backref=db.backref('comments', lazy=True))