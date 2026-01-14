class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2338.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2338.0/lightdash-cli-0.2338.0-macos-arm64.tar.gz"
      sha256 "2b0cdbc3b30a51bfbaf89255d29c47d54d8ecf7e54cf49c96e1cefdd3fe67f4e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2338.0/lightdash-cli-0.2338.0-macos-x64.tar.gz"
      sha256 "57e3b7c6745d274a6034640dd7082684ccf55d1d2e68a57e8a20e4c35caceb4f"
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
