class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2207.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2207.0/lightdash-cli-0.2207.0-macos-arm64.tar.gz"
      sha256 "0b3226c08d530deb9d5a7ca6cbdfbd9570f4416684b98ccbb6e943a467cbddec"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2207.0/lightdash-cli-0.2207.0-macos-x64.tar.gz"
      sha256 "90a9ab0e51e802affecd8b8d38fdf9ad32984d07368125bf74ee861782e11155"
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
