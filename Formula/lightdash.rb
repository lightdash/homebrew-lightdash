class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2226.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2226.1/lightdash-cli-0.2226.1-macos-arm64.tar.gz"
      sha256 "96c699c5f5ac94edf9c69f4ad07d9a0a8b5d22157d4c26b7250828bf2a412e38"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2226.1/lightdash-cli-0.2226.1-macos-x64.tar.gz"
      sha256 "654b51b1106ea5abec8b058a354a688e1ac31c866c571596ab0c0d54b7453e3e"
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
