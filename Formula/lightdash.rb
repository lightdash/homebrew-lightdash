class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.57.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.57.0/lightdash-cli-1.57.0-macos-arm64.tar.gz"
      sha256 "4c699c791735c5f8dc66a85d494a52b76b4dea93de633152981f1421b484b679"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.57.0/lightdash-cli-1.57.0-macos-x64.tar.gz"
      sha256 "4f70bebe61520e26e4c65ef3df9e7a347b0df9734a6db507a903412e0ef52844"
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
