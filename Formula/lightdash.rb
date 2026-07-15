class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3386.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3386.0/lightdash-cli-0.3386.0-macos-arm64.tar.gz"
      sha256 "0e867e49e82da94414978f25f057b16815ca343530420e566f082048e5ba4af1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3386.0/lightdash-cli-0.3386.0-macos-x64.tar.gz"
      sha256 "45736a924fe4a3345374ce4d8d0250e3e8987df21651ba17b59daf8a1f9e9afa"
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
