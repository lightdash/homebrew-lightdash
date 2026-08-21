class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.231.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.231.1/lightdash-cli-1.231.1-macos-arm64.tar.gz"
      sha256 "de4c8170f147890afa324021e9c0d2576c23157a66abe1c1b554eccaed8f8740"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.231.1/lightdash-cli-1.231.1-macos-x64.tar.gz"
      sha256 "e2cd1d82a8b138d56602ead2e9383f033a0658bdd359d26c56a0d7d55b20bb9d"
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
