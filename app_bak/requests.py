from flask import request

from models import User, Admin, Petition, Solution, Expenses, Introduction, Comment
from app import app, db
'''    id_petition = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(64), nullable=False)
    desc = db.Column(db.String(256))
    solution_category = db.Column(db.String(32), nullable=False)
    solution_character = db.Column(db.String(256))
    likes = db.Column(db.Integer, default=0)
    rewards = db.Column(db.Integer, default=0)
    comments = db.relationship('Comment', backref='petition', lazy=True)
    expenses = db.relationship('Expenses', backref='petition', lazy=True)
    introduction = db.relationship('Introduction', backref='petition', lazy=True)'''

@app.route('/petition', methods=['POST'])
def Add_petition():
    if request.method == 'POST':
        data = request.get_json()
        title = data.get('title')
        desc = data.get('desc')
        solution_category = data.get('solution_category')
        solution_character = data.get('solution_character')
        rewards = data.get('rewards')
        expenses_name = data.get('expenses_name')
        expenses_sum = data.get('expenses_sum')
        introductions_stage = data.get('introduction_stage')
        introductions_days = data.get('introduction_days')
        petition = Petition(title=title,
                            desc=desc,
                            rewards=rewards,
                            solution_category=solution_category,
                            solution_character=solution_character,
                            likes=0)

        for i in range(0, len(expenses_name)):
            name = expenses_name[i]
            sum = expenses_sum[i]
            expense = Expenses(name=name, sum=sum)
            petition.expenses.append(expense)

        for i in range(0,len(introductions_stage)):
            stage = introductions_stage[i]
            days = introductions_days[i]
            introduction = Introduction(stage=stage, days=days)
            petition.introduction.append(introduction)


        db.session.add(petition)
        db.session.commit()
        return 'Success!', 200
