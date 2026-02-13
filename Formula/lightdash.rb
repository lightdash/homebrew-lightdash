class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2465.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2465.0/lightdash-cli-0.2465.0-macos-arm64.tar.gz"
      sha256 "a8c7de958e0e18d72941282be65121146d69c794b41d7d29f24bf0d1d16661d3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2465.0/lightdash-cli-0.2465.0-macos-x64.tar.gz"
      sha256 "0a043b68b6608559eb7e86b9db6de8fa0dc35ddf2a4e4ddac7259efb7168969b"
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
