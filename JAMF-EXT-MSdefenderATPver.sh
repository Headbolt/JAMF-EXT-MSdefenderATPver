#!/bin/bash
#
###############################################################################################################################################
#
# ABOUT THIS PROGRAM
#
#	JAMF-EXT-MSdefenderATPver.sh
#	https://github.com/Headbolt/JAMF-EXT-MSdefenderATPver
#
#   This Script is designed for use in JAMF as an Extension Attribute
#		with a type set of "Integer"
#
#   - This script will ...
#       Search for the MS Defender ATP App and pull out the version number.
#
###############################################################################################################################################
#
# HISTORY
#
#   Version: 1.0 - 22/06/2021
#
#   - 22/06/2021 - V1.0 - Created by Headbolt
#
###############################################################################################################################################
#
# SCRIPT CONTENTS - DO NOT MODIFY BELOW THIS LINE
#
###############################################################################################################################################
#
DefPath=$(find /Applications -maxdepth 2 -iname "Microsoft Defender ATP.app") # Find Microsoft Defender App
#
DefVers=$(defaults read "${DefPath}"/Contents/Info CFBundleVersion) # Extracts the Defender Version from the APP
#
/bin/echo "<result>$DefVers</result>" # Return Result
