class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2722.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2722.0/lightdash-cli-0.2722.0-macos-arm64.tar.gz"
      sha256 "8c0d4d9bb65e0aef4e2d66bc5f5e2d147f2f6fd6bd0eb5bf721eb4481d4538ae"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2722.0/lightdash-cli-0.2722.0-macos-x64.tar.gz"
      sha256 "73192b9c4333f82abe726542c7bdbbdfc071bbe78cb30c7b68193f48820f43bd"
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
