class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3315.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3315.5/lightdash-cli-0.3315.5-macos-arm64.tar.gz"
      sha256 "0a5a8266b10422675db66961b46133eb4714dcbf466b2192caa6a93dceca0097"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3315.5/lightdash-cli-0.3315.5-macos-x64.tar.gz"
      sha256 "b85ad65f9e2e2c28824ea702d665ecd9dff2f2592ba0b56a796e74376ce35d5d"
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
