class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.370.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.370.0/lightdash-cli-2.370.0-macos-arm64.tar.gz"
      sha256 "fa428b8374945e012535c1c96e440b7145fab09048ea5a870e5922e1303cc963"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.370.0/lightdash-cli-2.370.0-macos-x64.tar.gz"
      sha256 "5e51ccb19823df38623116f0de4aa2d80712b5fea04efa315efea1186c5d0ab4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.370.0/lightdash-cli-2.370.0-linux-x64.tar.gz"
    sha256 "ce4cf556565baf9349cff35d4719ac00d80176ed1da79f7c3c236793b44e87a7"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
