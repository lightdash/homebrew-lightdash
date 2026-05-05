class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2867.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2867.0/lightdash-cli-0.2867.0-macos-arm64.tar.gz"
      sha256 "4dd2d4fb24ac9620101335beb9b3a6f8bdd445acb6f8e7eb2b8b9cae9e518df9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2867.0/lightdash-cli-0.2867.0-macos-x64.tar.gz"
      sha256 "67a6ab75a0148a6a6ceb19c570437fb01391d9c30cec21d57056990e3b4d89a9"
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
