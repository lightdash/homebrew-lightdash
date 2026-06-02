class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3080.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3080.0/lightdash-cli-0.3080.0-macos-arm64.tar.gz"
      sha256 "98b6efe36f43a5b5d5ab0ca9c69c5caebf223817e1230d7dc3654547c6f6038f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3080.0/lightdash-cli-0.3080.0-macos-x64.tar.gz"
      sha256 "ac9250a858c4abb8f77e9a7c4f40cb545fa95d4ab5968a3ca91c0e75fa264c71"
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
