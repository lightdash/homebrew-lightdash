class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3395.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3395.1/lightdash-cli-0.3395.1-macos-arm64.tar.gz"
      sha256 "6126eba03c6cca975438313c059e4ae66862988aaca9dc4a257dfecc4ff34813"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3395.1/lightdash-cli-0.3395.1-macos-x64.tar.gz"
      sha256 "e30298c45b6f36c1e474d72d8d206393769a5b39e7ddb75d80ff0457f3555ced"
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
