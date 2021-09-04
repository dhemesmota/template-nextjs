#!/bin/bash
if [ ! -f ".env.development" ]; then
  cp .env.example .env.development
fi