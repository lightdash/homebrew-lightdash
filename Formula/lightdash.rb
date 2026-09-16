class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.237.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.237.0/lightdash-cli-2.237.0-macos-arm64.tar.gz"
      sha256 "19002fd53d08203a3f7d0157505d5345838ee7f7d42769c53ebaa6bab98f66ae"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.237.0/lightdash-cli-2.237.0-macos-x64.tar.gz"
      sha256 "da9d15b32a0ef5a389d809bdc5d8687a32f90cea065df5c9bf094c2997e58a56"
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
