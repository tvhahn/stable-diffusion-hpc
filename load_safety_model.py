from transformers import AutoFeatureExtractor
from diffusers.pipelines.stable_diffusion.safety_checker import StableDiffusionSafetyChecker

# load safety model
safety_model_id = "CompVis/stable-diffusion-safety-checker"
safety_feature_extractor = AutoFeatureExtractor.from_pretrained(safety_model_id)
safety_checker = StableDiffusionSafetyChecker.from_pretrained(safety_model_id)

safety_feature_extractor.save_pretrained('./stable_cache_dir/')
safety_checker.save_pretrained('./stable_cache_dir/')