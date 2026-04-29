class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2843.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2843.0/lightdash-cli-0.2843.0-macos-arm64.tar.gz"
      sha256 "258135b645c50071869c2609eda83f6104175257b3050f967c9089bdfb92a476"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2843.0/lightdash-cli-0.2843.0-macos-x64.tar.gz"
      sha256 "cc0e7e3bfe33115ff008ea649e77234fd30ebf0a288ae6f4e0591221fc96e5a2"
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
