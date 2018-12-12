{
    "rules": [
        {
            "rulePriority": 1,
            "description": "Expire images older than DAYS.",
            "selection": {
                "tagStatus": "TAG",
                "countType": "sinceImagePushed",
                "countUnit": "days", 
                "countNumber": DAYS
            },
            "action": {
                "type": "expire"
            }
        }
    ]
}
