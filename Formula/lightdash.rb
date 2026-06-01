class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3066.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3066.0/lightdash-cli-0.3066.0-macos-arm64.tar.gz"
      sha256 "8a9f52ca970de5c8fb881ff9a2b0e387a3a01b8c6564f70301c52792bc09d1d6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3066.0/lightdash-cli-0.3066.0-macos-x64.tar.gz"
      sha256 "1129438d90ff43d7a7b2bf70ed108acb3fcb2b1b959f0c1c8a27d54190eeb9e7"
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
