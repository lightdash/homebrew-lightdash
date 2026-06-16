class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3167.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3167.1/lightdash-cli-0.3167.1-macos-arm64.tar.gz"
      sha256 "4494248df000edb5810eae35681abce558279ade099be7c744c74e095fa10630"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3167.1/lightdash-cli-0.3167.1-macos-x64.tar.gz"
      sha256 "71250a001ea5af8c062a9953cc349bb911a1e58fa831786624722ef53d5b2a92"
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
