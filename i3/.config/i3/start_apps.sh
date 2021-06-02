#!/bin/env bash

pkill redshift-gtk; pkill redshift; redshift-gtk &
pkill polybar; polybar -r example &
spotify &