class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.70.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.70.0/lightdash-cli-3.70.0-macos-arm64.tar.gz"
      sha256 "19dc2e5c7fd305e3878ad8aed1d900b1063b1df3526a43616a6e081ae980f699"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.70.0/lightdash-cli-3.70.0-macos-x64.tar.gz"
      sha256 "1f7cbaae74be449d4cd6c758220845104b817e3a6d93f823831786eb0857df6f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.70.0/lightdash-cli-3.70.0-linux-x64.tar.gz"
    sha256 "e15f691d56cc4dafc07ebdebc56b5faba4cb9829ff8743fa75a630416cd77918"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
