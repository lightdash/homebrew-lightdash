class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.34.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.34.1/lightdash-cli-3.34.1-macos-arm64.tar.gz"
      sha256 "ee5181fea1a01b3ffc3f7b23cc23d4513eecf986dd7f50361b0768a8c2df5bdb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.34.1/lightdash-cli-3.34.1-macos-x64.tar.gz"
      sha256 "6bc7da032bc50a0f0925d17af99c835c7ebf40ac3ee954464935a1e3a5a9a506"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.34.1/lightdash-cli-3.34.1-linux-x64.tar.gz"
    sha256 "4218f530a63d11586fd6a5b28f0ec67553fbaa570593d81bfdc785bf4952fdff"

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
