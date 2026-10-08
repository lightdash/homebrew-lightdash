class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.476.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.476.0/lightdash-cli-2.476.0-macos-arm64.tar.gz"
      sha256 "50b62711590ababb8c5b8f18a21841bbd10dfd761450c57e2c5568937affac8b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.476.0/lightdash-cli-2.476.0-macos-x64.tar.gz"
      sha256 "283042f3ce9414235658a41559ce2c7a66782f1f7949fb0ad8d1fd829643b4d6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.476.0/lightdash-cli-2.476.0-linux-x64.tar.gz"
    sha256 "1fc5e31a8e01199b30fb11a118aa890200e926379693dc2792c4ff06f6e15b1c"

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
