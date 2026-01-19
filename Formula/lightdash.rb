class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2353.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2353.1/lightdash-cli-0.2353.1-macos-arm64.tar.gz"
      sha256 "f26f90f767cb508c30ff918e41881f4566f047e1451622d96a8d5f6e5e619b2e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2353.1/lightdash-cli-0.2353.1-macos-x64.tar.gz"
      sha256 "97423059cb7aa20c57c796655930aa767dc91375d1e6efdc91fc16ac56f1e985"
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
