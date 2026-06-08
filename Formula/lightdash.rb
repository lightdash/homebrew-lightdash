class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3108.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3108.0/lightdash-cli-0.3108.0-macos-arm64.tar.gz"
      sha256 "de3e126393af28ec3edaf8ef337627a2395c5261a63f8d13cf8eaf15e9e7afaa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3108.0/lightdash-cli-0.3108.0-macos-x64.tar.gz"
      sha256 "b2f78212837415e30ede40ece176feec9f9e5dc71172d9bb30700c4396e0a5ef"
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
