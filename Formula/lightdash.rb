class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2292.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2292.0/lightdash-cli-0.2292.0-macos-arm64.tar.gz"
      sha256 "028c524834b8221ddab6f9ddc55b687928f8546c65d96a94bff5e93264864b52"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2292.0/lightdash-cli-0.2292.0-macos-x64.tar.gz"
      sha256 "193055cc63a4e69b9680a2ad0838724cf37750f21bda7efe52a3feb01ce3d6e2"
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
