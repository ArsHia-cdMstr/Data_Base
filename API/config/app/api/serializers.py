# serializers.py
from rest_framework import serializers
from app.models import Messages, Course, Student, Class

class MessageSerializer(serializers.ModelSerializer):
    class Meta:
        model = Messages
        fields = ['sender', 'receiver', 'subject', 'content', 'timestamp']

class CourseSerializer(serializers.ModelSerializer):
    class Meta:
        model = Course
        fields = '__all__'

class StudentSerializer(serializers.ModelSerializer):
        class Meta:
            model = Student
            fields = '__all__'

class ClassSerializer(serializers.ModelSerializer):
    class Meta:
        model = Class
        fields = '__all__'
