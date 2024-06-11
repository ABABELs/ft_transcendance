from django.http import HttpResponse
from django.shortcuts import render
from listings.models import Band
from listings.models import Listing

def hello(request):
    bands = Band.objects.all()
    return render(request,
    'listings/hello.html',
    {'bands': bands})


def listing(request):
    listing = Listing.objects.all()
    return render(request,
    'listings/listings.html',
    {'sitetitle': listing})

def about(request):
    return HttpResponse("About page")

def contact(request):
    return HttpResponse("Contact page")

