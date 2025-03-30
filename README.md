```python
#!/usr/bin/python3

class MySelf:
    def __init__(self):
        self.name = "Rakha Fausta Adinata Raharja"
        self.interest = "WebDev Enthusiast, I have interest in DevOps too ^^"
        self.roles = "Currently a student in SMKN 7 Semarang"
        
        self.technologies = {
            "Languages": ["HTML/CSS", "Python", "C", "PHP", "JavaScript"],
            "Web Frameworks": ["Flask", "React", "JQuery", "Tailwind/Bootstrap"],
            "Database Services": ["MySQL"],
            "DevOps" : ["Docker", "Linux", "Git & GitHub"],
            "Tools": ["Postman", "Cisco", "Figma"]
        }
        
    def sayHi(self):
        print(f"Hi!\nMy Name is {self.name}\nI'm {self.interest}\nNow I'm {self.roles}\n")
        print("Technologies I use:")
        for category, techs in self.technologies.items():
            print(f"- {category}: {', '.join(techs)}")

if __name__ == "__main__":
    show = MySelf()
    show.sayHi()
```
