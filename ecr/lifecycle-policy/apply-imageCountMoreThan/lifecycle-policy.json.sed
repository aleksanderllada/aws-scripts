{
    "rules": [
        {
            "rulePriority": 1,
            "description": "Expire images when count is greater than COUNT.",
            "selection": {
                "tagStatus": "TAG",
                "countType": "imageCountMoreThan",
                "countNumber": COUNT
            },
            "action": {
                "type": "expire"
            }
        }
    ]
}
