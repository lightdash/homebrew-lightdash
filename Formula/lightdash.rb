class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2974.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2974.0/lightdash-cli-0.2974.0-macos-arm64.tar.gz"
      sha256 "af78fc290ff149d3c2a3c338d8431c9336cdf77c649e0828c616bb8380d17ec4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2974.0/lightdash-cli-0.2974.0-macos-x64.tar.gz"
      sha256 "700ed2dcecf4b2ce6ceb842adf2ce0831922041263503028ea8cb6668640cff0"
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
