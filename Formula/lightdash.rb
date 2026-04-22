class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2775.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2775.3/lightdash-cli-0.2775.3-macos-arm64.tar.gz"
      sha256 "3bba06ac98922b6fe0eb0dd0a2dbf04f8b386ba620aec08f4ccc91b3042a63fd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2775.3/lightdash-cli-0.2775.3-macos-x64.tar.gz"
      sha256 "f79e43a429aee49af0bbeb65c0fa4b31cab5773a8cb349f59082e157fa828ab0"
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
