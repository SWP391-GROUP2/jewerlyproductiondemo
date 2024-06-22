﻿using JewelryProduction.DTO;

namespace JewelryProduction.Interface
{
    public interface IProductSampleService
    {
        Task<List<ProductSample>> GetRecommendedSamples(CustomerRequestDTO chosenSample);
    }
}