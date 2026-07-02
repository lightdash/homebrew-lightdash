class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3294.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3294.1/lightdash-cli-0.3294.1-macos-arm64.tar.gz"
      sha256 "40b2bb3da946757d81ce924a9f8c06289e4c020a9cbfeb8f4e45c6a075186ee7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3294.1/lightdash-cli-0.3294.1-macos-x64.tar.gz"
      sha256 "251ecfa41cf9707e2e8a96882fa96aac059c27bf2f2238a30680b130229d44e6"
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
