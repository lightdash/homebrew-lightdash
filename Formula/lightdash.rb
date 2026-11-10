class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.191.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.191.0/lightdash-cli-3.191.0-macos-arm64.tar.gz"
      sha256 "d292a5b2740fa5f632cf7459f485664d37bb338210ceb9e2bb0a65f486a5fcb3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.191.0/lightdash-cli-3.191.0-macos-x64.tar.gz"
      sha256 "7a36b301dde35eb6ad8fb04e66e670f5b41e8bcf6cfb131c4ecadff0e1aa87bb"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.191.0/lightdash-cli-3.191.0-linux-x64.tar.gz"
    sha256 "f570afeac3c2d8a1dbc87f9d2b791ac7dee4d5f5939b6b9787c55d6edd7a1c75"

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
