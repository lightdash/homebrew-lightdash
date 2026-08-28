class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.43.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.43.0/lightdash-cli-2.43.0-macos-arm64.tar.gz"
      sha256 "617712704df07212dbf890f2e2559761101be59ea228b5d5987f611fb3da0322"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.43.0/lightdash-cli-2.43.0-macos-x64.tar.gz"
      sha256 "a8860d2891c0f2b67e03225f13553aabb82a127455de0e4bd48c90936f1ac5b4"
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
