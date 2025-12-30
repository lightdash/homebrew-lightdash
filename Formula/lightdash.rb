class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2287.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2287.0/lightdash-cli-0.2287.0-macos-arm64.tar.gz"
      sha256 "babfa24c20c68fbb2b7b0414d503b4f711df7b06ccdf28c19a0df47b9ea58c9e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2287.0/lightdash-cli-0.2287.0-macos-x64.tar.gz"
      sha256 "30c9bc2849661f2bfc617164b6df5b86fe067dae8a236cae05cc86f5f81e7eb5"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
