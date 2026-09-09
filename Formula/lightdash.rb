class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.177.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.177.0/lightdash-cli-2.177.0-macos-arm64.tar.gz"
      sha256 "4d7ec13941fc1e57f585a198bccb8639f4b9148b593ebb351288aa784016cdd2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.177.0/lightdash-cli-2.177.0-macos-x64.tar.gz"
      sha256 "81dc9b8773a9852b6bc8e6fed67eddc5f7e2cf4287a635cc4bfe872bb1ac95ca"
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
