import json

with open('completo.json', 'r') as file:
    data = json.load(file)

for materia in list(data.keys()):
    if "graduación" in materia or "Graduación" in materia:
        del data[materia]

# with open('completo.json', 'w') as file:
#     json.dump(data, file, ensure_ascii=False, indent=4)



# def get_courses_with_no_prerequisites(courses):
#     return [course for course, details in courses.items() if details['correlativas'][0]=='']

# def get_next_courses(current_course, courses):
#     return [course for course, details in courses.items() if current_course in details['correlativas']]

# def generate_course_plan(courses, num_years=4, semesters_per_year=2, max_courses_per_semester=5):
#     course_plan = {}
#     courses_done = set()

#     for year in range(1, num_years + 1):
#         for semester in range(1, semesters_per_year + 1):
#             semester_key = f"Year {year} - Semester {semester}"
#             course_plan[semester_key] = []

#             # Get courses with no prerequisites first
#             if not courses_done:
#                 available_courses = get_courses_with_no_prerequisites(courses)
#             else:
#                 available_courses = []
#                 for course in courses_done:
#                     available_courses.extend(get_next_courses(course, courses))
            
#             available_courses = list(set(available_courses) - courses_done)
#             course_plan[semester_key] = available_courses[:max_courses_per_semester]
#             courses_done.update(course_plan[semester_key])

#     return course_plan

# courses = data

# course_plan = generate_course_plan(courses)
# print(course_plan)
import pandas as pd
df = pd.DataFrame(data).T
df.to_excel("nuevo_completo.xlsx", index=False, engine='openpyxl')