class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3258.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3258.3/lightdash-cli-0.3258.3-macos-arm64.tar.gz"
      sha256 "828ac49d85a59ba1fd453a2e94f88540027ec0559d9c326414c3468a186292fd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3258.3/lightdash-cli-0.3258.3-macos-x64.tar.gz"
      sha256 "70faf1a3b7fc1cfccd251c43a7b74f9f77f6fdea4a50508cf6639d8b461c2fe2"
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
