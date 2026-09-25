class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.339.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.339.0/lightdash-cli-2.339.0-macos-arm64.tar.gz"
      sha256 "07387dd0a336898654252d465cbda91a81d6152403ca75886124df8f20d1bd89"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.339.0/lightdash-cli-2.339.0-macos-x64.tar.gz"
      sha256 "f3cadb14917954c9f81848709be20aa979289642d19e14b72795f544a1f3027f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.339.0/lightdash-cli-2.339.0-linux-x64.tar.gz"
    sha256 "709ad992cbdce23769d868543caf9bb60c8a88127f31aa1a6c1b1b62f6664c48"

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
