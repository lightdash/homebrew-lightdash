class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3292.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3292.1/lightdash-cli-0.3292.1-macos-arm64.tar.gz"
      sha256 "b9f152b865b6918ec1dcffcf0ecb60e5289572e8aea095c4a2300900fa32852d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3292.1/lightdash-cli-0.3292.1-macos-x64.tar.gz"
      sha256 "6607f6460ad20950b347b76a1b860d5a9bb6f96a6a15fcd469f21fe2a6fdb910"
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
