{ pkgs, config, ...}:
{
services.ollama = {
  enable = true;
  # Optional: load models on startup
  loadModels = [ 
    deepseek-r1:8b
    llama3:8b
   ];
  acceleration = "rocm";
  
};
  environment.systemPackages = with pkgs;
  [
    alpaca
  ];
}