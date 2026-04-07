class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2729.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2729.2/lightdash-cli-0.2729.2-macos-arm64.tar.gz"
      sha256 "d83b86b71d69fc611b463ccd4c7b7eccb8b33b44cd8e81d26b8777164034fb33"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2729.2/lightdash-cli-0.2729.2-macos-x64.tar.gz"
      sha256 "4d903ef00a4c66e4d893b3293b5128a53a049a1da9a623db436dbbfc9a7cf2bf"
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
