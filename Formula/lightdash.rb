class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2993.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2993.0/lightdash-cli-0.2993.0-macos-arm64.tar.gz"
      sha256 "4a02f3dbb32435473f97c4f9e8ce807ae47f0f0b8d6eb0530c8e1d9594280306"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2993.0/lightdash-cli-0.2993.0-macos-x64.tar.gz"
      sha256 "6f06329589b23401545d9edc8df622a291222de4628bc138ddf5792d319813b2"
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
