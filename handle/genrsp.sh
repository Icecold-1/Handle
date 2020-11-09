#!/bin/bash

RESPFILE=$1

echo "y" > $RESPFILE								#primary server or mirror
echo "n" >> $RESPFILE								#dual stack (ipv4 and ipv6)
echo "lhrs1.hpc-rivr.um.si"	>> $RESPFILE			#ip of server accessible to clients
echo "lhrs1.hpc-rivr.um.si"	>> $RESPFILE			#if ip is different, type in to bind
echo "2641"	>> $RESPFILE							#port number for server to listen to
echo "8000" >> $RESPFILE							#port number of http interface
echo "y" >> $RESPFILE								#log accesses
echo "Monthly" >> $RESPFILE							#frequency of logging accesses
echo "1" >> $RESPFILE								#version/serial number
echo "OpenScience handle" >> $RESPFILE				#short description
echo "FERI" >> $RESPFILE							#org name
echo "Tomaz Kramberger" >> $RESPFILE				#name of contact
echo "none" >> $RESPFILE							#phone number of contact
echo "tomaz.kramberger3@um.si" >> $RESPFILE			#email of contact
echo "n" >> $RESPFILE								#disable udp
echo "y" >> $RESPFILE								#encrypt private key server certification
echo "geslomocno9999" >> $RESPFILE					#password to encrypt
echo "geslomocno9999" >> $RESPFILE					#repeated password
echo "y" >> $RESPFILE								#encrypt private key administration
echo "geslomocno9999" >> $RESPFILE					#password to encrypt
echo "geslomocno9999" >> $RESPFILE					#repeated password