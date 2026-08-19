class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.202.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.202.0/lightdash-cli-1.202.0-macos-arm64.tar.gz"
      sha256 "23eb647bba35c1f92d31ed612877c6695da94b6d18850e7e31d5141dec8dc20d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.202.0/lightdash-cli-1.202.0-macos-x64.tar.gz"
      sha256 "4cb93d6dce128c7d8d762fb974d191f9a3d70265cb69d857025d2fcad03a863c"
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
