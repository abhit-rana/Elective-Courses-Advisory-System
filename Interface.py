import nltk
from nltk.tokenize import word_tokenize
from nltk.stem import PorterStemmer
from pyswip import Prolog
import re
# from nltk.stem import WordNetLemmatizer
# lemmatizer = WordNetLemmatizer()
prolog = Prolog()

ps = PorterStemmer()
import re

keyWords = ["technology", "coding", "theoritical_maths", "mathematical_aptitude", "discrete_maths", "statistic", "programming", "circuit_designing", "current_flow", "analyzing_comparing_things", "low_level_programming", "competitive_nature", "cybersecurity", "electron_proton_behavior", "team_work", "building_projects"]

keyWordStemmed = ["technolog", "'code'", "theoritical_math", "mathematical_aptitud", "discrete_math", "statist", "program", "circuit_design", "current_flow", "analyzing_comparing_th", "low_level_program", "competitive_natur", "cybersecur", "electron_proton_behavior", "team_work", "building_project"]

userInpContInterests = [0]*len(keyWords)

print("Please tell what you like from these set of interests:{}".format(keyWords))
print("Answer:")
userInputString = input()

userInputTokensNoStemming = word_tokenize(userInputString)
userInputTokensStemming = [ps.stem(token) for token in userInputTokensNoStemming]

userInputStringStemmed = " ".join(userInputTokensStemming)

for i in range(len(keyWordStemmed)):
    if(len(re.findall(keyWordStemmed[i], userInputStringStemmed)) > 0):
        userInpContInterests[i] = 1

similarityScores = []

f = open("facts.pl", 'w')

f.write("user_features({}).\n".format(userInpContInterests))

f.close()

prolog.consult("Code.pl")

c = list(prolog.query("undo"))
c = list(prolog.query("go1"))

print("Enter the Career you want to take:")

career = input()

f = open("facts.pl", 'w')

f.write("career_chosen({}).\n".format(career))

f.close()
c = list(prolog.query("go2"))



print('Enter the courses which you have done')

fcourses1 = ['ip', 'dc', 'sdos', 'ds', 'dsa', 'spem']
fcourses2 = ['ip', 'dc', 'dip', 'ca', 'dsa', 'ssd', 'sns', 'la']
fcourses3 = ["ip", "la", "pns", "m3", "dbms", "dsa"]
fcourses4 = ["ip", "la", "pns", "dbms", "dsa", "bdmh"]
fcourses5 = ["ip", "cp", "dsa"]
fcourses6 = ["ip", "sdos", "dsa", "spem"]
fcourses7 = ["ip", "la", "pns", "qmd", "dsa"]

fctaken = []

coursesString = input()
coursesTokens = word_tokenize(coursesString)

if(career=='c1'):
    for course in fcourses1:
        if course in coursesTokens:
            fctaken.append(course)
elif(career=='c2'):
    for course in fcourses2:
        if course in coursesTokens:
            fctaken.append(course)  
elif(career=='c3'):
    for course in fcourses3:
        if course in coursesTokens:
            fctaken.append(course)  
elif(career=='c4'):
    for course in fcourses4:
        if course in coursesTokens:
            fctaken.append(course) 
elif(career=='c5'):
    for course in fcourses5:
        if course in coursesTokens:
            fctaken.append(course)
elif(career=='c6'):
    for course in fcourses6:
        if course in coursesTokens:
            fctaken.append(course)  
elif(career=='c7'):
    for course in fcourses7:
        if course in coursesTokens:
            fctaken.append(course)  

f = open("facts.pl", 'w')

f.write("career_chosen({}).\n".format(career))
f.write("fctaken({}).\n".format(fctaken))

f.close()
c = list(prolog.query("go3"))
c = list(prolog.query("undo"))
