class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2857.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2857.0/lightdash-cli-0.2857.0-macos-arm64.tar.gz"
      sha256 "d8e868f79aca866562d880e0a7fe9d65d6e45a1a72442b16c647966eed5b4f68"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2857.0/lightdash-cli-0.2857.0-macos-x64.tar.gz"
      sha256 "a563da90c64cde8316983d8a8a2c5de49434828b6f6cf0cbc1b84fb4a55b2343"
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
