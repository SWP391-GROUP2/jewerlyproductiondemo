﻿using System.Text.Json.Serialization;

namespace JewelryProduction.DTO.Account
{
    public class UserProfileDTO
    {
        public string Name { get; set; }
        public string PhoneNumber { get; set; }
        public string Email { get; set; }

        [JsonIgnore]
        public DateOnly? DateOfBirth { get; set; }

        [JsonPropertyName("DateOfBirth")]
        public string DateOfBirthString
        {
            get => DateOfBirth?.ToString("yyyy-MM-dd");
            set => DateOfBirth = string.IsNullOrEmpty(value) ? null : DateOnly.Parse(value);
        }

        public string? Avatar { get; set; }
    }
}
