class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2271.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2271.4/lightdash-cli-0.2271.4-macos-arm64.tar.gz"
      sha256 "bdffa35c912fbbf4bedc5e4b606e7b16795607d5734accf521f9f2f4f0298407"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2271.4/lightdash-cli-0.2271.4-macos-x64.tar.gz"
      sha256 "76ee78480b2e548e4dd62d59a180c1d9c3fb55a437e7d55cfae603348af0edee"
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
